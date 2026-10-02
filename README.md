
Timedrops
------

> a time tracking tool.

### Workflow

https://github.com/Cumulo/calcium-workflow

### 构建与部署

使用正式 Calcit / `@calcit/procs` 0.27.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0；原 browser/native 入口目标不变。CI 保留 strict workflow、入口与工具链门禁，以全部应用 namespace 的两项公开定义检查替代重复类型统计。

COS 只上传前端 `dist/`。生产 CDN 路径仍为 `https://cos-sh.tiye.me/TopixIM/timedrops/`；同仓库 PR 使用 `pr/<编号>/<run-id>/<attempt>/` 隔离资源，fork PR 只构建。上传由 `worktools/cos-upload-action@v1.2.0` 的 `public-base-url` 与内置 `verify-*` 默认配置校验，无额外脚本。

生产排队、不取消运行中上传；一次 main SHA 预检后旧提交跳过部署，不保证原子发布。原 web rsync 路径及 `/servers/paste-sharing/` 服务端路径保持不变，`dist-server/` 不上传 COS。既有模块版本 warning 保留，不声称 strict 依赖图通过，不用 hash/main 绕过。不启动服务或改动持久化文件；生成目录和旧 Snapshot 不入库。

### License

MIT
