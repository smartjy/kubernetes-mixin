local kubernetes = import "kubernetes-mixin/mixin.libsonnet";

kubernetes {
  _config+:: {
    kubeStateMetricsSelector: 'job="kubernetes-service-endpoints"',
    cadvisorSelector: 'job="kubernetes-nodes-cadvisor"',
    nodeExporterSelector: 'job="kubernetes-service-endpoints"',
    kubeletSelector: 'job="kubernetes-nodes"',
    grafanaK8s+:: {
      dashboardNamePrefix: 'Mixin / ',
      dashboardTags: ['kubernetes', 'infrastucture'],
    },
  },
}