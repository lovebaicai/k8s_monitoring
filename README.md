### k8s_monitoring相关部署文件说明

#### fix_metrics脚本
- etcd-secret.sh：增加集群内部etcd secret
- fix_kubelet.sh：修复无法监听kubelet，kube-controller-manager，kube-scheduler

#### alertmanager组件:
- alertmanager相关部署文件，包含：deployment，service，configmap，templates

#### grafana组件
- grafana相关部署文件，包含：deployment, service

#### prometheus组件
- prometheus相关部署文件：
  - prometheus-deploy: prometheus部署文件+配置+报警规则
  - discovery：kube-controller-manager服务发现配置，kube-scheduler服务发现配置文件
  - exporters:
     - black-exporter：黑盒探测
     - kube-state-metrics：kubernetes apiserver监听组件配置文件(通过监听apiserver,收集集群内部资源状态:deployments, nodes and pods)
     - node-exporter：节点信息收集
  - rbac：Prometheus与集群交互权限规则配置文件

