
# Timedrops

一个基于 Calcit、Respo 和 Cumulo 的时间记录工具。

## 升级与数据

本轮将 Calcit / `@calcit/procs` 成对固定为正式 **0.30.1**，并同步精确正式模块图：
Cumulo Reel 0.0.61、Recollect 0.0.67、WS-EDN 0.0.47、Respo 0.16.124／UI 0.8.0／JS FFI 0.2.5。
三处旧 Option 调用改为 `.unwrap-or`，默认值、schema 和原测试不变；本轮不再次改变存档、wire、登录 key 或应用模型。
移除仅供旧 alpha runtime 使用的 npm 安装豁免，不降低 Yarn 默认新包隔离策略。
此前具名模型升级仍需要前后端一起切换，旧页面随后刷新；新前端不兼容仍发送旧 Map 投影的服务端。
服务端须事先准备配对 CLI 和声明依赖，原部署工作流只复制文件，不安装依赖或重启进程。

数据库使用具体 Db、Session、User 和 Timedrop；缺失用户和视图使用 Option。
时间记录的 ID、时间和文本分别为 String、Number、String，原有增删与路由交互保留。
旧 `timedrops.cirru` Map 存档与新具名存档均先解码；不合法字段会阻止启动，
不会以空数据库覆盖旧文件。正常保存仍清空临时 sessions，并保留原备份路径。
部署前另行备份原存档；第一次保存会写成具名 Db，回滚旧程序时应恢复升级前备份。
Router.data/router 的历史开放值保持，不因迁移清空。

网络保留增量 patch 信封，但投影改为具名模型。接收端先在独立原始 wire tree 上
执行 Recollect 受检 patch，再完整解码 Store，成功后才同时提交 wire/UI 状态。
无效 patch 保留前态并显示错误，不通过强转把匿名网络值当成名义类型。
发送队列接受 patch 后才推进缓存；背压保留待重试状态。
登录继续使用原 `timestops` localStorage key 和字符串列表格式，不删除已有登录信息。
Reel 的 Reset/Merge/Persist 仅在开发模式响应；Reset 保留当前连接的会话，避免调试重置后无法继续登录。

## 开发和检查

使用 Node.js 24、Yarn 4.18.0、Caps 0.1.1。源码仅为 `calcit.cirru`，依赖为 `deps.cirru`。
修改 Snapshot 使用当前 CLI 的 query/tree/edit/config，批量写入先 dry-run 并携带 scoped revision。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only
calcit --entry server --check-only
calcit fix --workflow strict --verify
yarn test
yarn compile-page
yarn release-page
```

CI 另按 browser/native 分区检查全部应用定义，复用发布版共享 runner 在 native/JS
回放同一组可移植数据契约；服务端持久化和认证测试在 native 执行。
不新增项目专用检查脚本或并行启动依赖。遵守用户对本地 Caps 的额外限制。

正式 0.30.1 的官方 Linux 准备任务已通过完整 strict、两侧入口／namespace 检查、原 native 8/8、
共享 native／JS 各 4/4 和构建；另用真实生成的 Dayjs 适配器核对两种原日期格式，连同原冒号格式保留。
临时准备工作流、迁移脚本和日期探针不进入项目；未重跑真实服务／浏览器账户保存／SIGINT／冷启动验收，
此前 alpha 候选的服务记录不能冒充本轮端到端结果。账户存储及生产 rollout 仍按原待确认边界处理。

`yarn watch-page` 显式监听前端编译；另行运行 Vite。
隔离验收应将 Snapshot、manifest 和模块视图准备到临时目录，设置
`TIMEDROPS_BIND_ADDRESS=127.0.0.1` 和 `port`，再运行其中的 `calcit calcit.cirru --entry server`。
存档按 Snapshot 目录定位，仅改变工作目录不足以隔离。未设置地址时沿用原全网卡监听。

## 部署

COS 仅上传 `dist/`，生产 CDN 路径保持 `https://cos-sh.tiye.me/TopixIM/timedrops/`。
同仓库 PR 使用 `pr/<编号>/<run-id>/<attempt>/` 隔离资源，fork PR 只构建。
上传校验只用 `worktools/cos-upload-action@v1.2.0` 的 `public-base-url` 和内置 verify，
不叠加校验脚本。生产排队且检查 main 新鲜度，仍不保证原子发布。
原 web rsync 与 `/servers/paste-sharing/` 路径均保留，`dist-server/` 不上传 COS。
`js-out/`、`dist/`、临时验收和旧 compact/package Snapshot 不入库。

## 限制

- 异构 UI 状态、历史开放路由和未解码 wire tree 仍是明确边界，不宣称所有 Dynamic 已清零。
- 现有 patch 协议没有 ACK/revision 恢复；队列接受不等于客户端已应用，错误时需重新连接或刷新。
- 超过 WebSocket 单消息限制的 patch 会报告错误，不声称已实现分片传输。

## License

MIT
