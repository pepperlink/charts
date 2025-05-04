# helm-charts

My personal collection of Helm charts. They're a bit messy, really.

I am currently working on updating them all to use bjw-s [Common Library](https://bjw-s-labs.github.io/helm-charts/docs/common-library/). Charts that are already ported will have version numbers starting with 0.2.

## Usage
Add the repository to your Helm installation:

```bash
helm repo add pepperlink https://pepperlink.github.io/charts
```

Charts will have a `values.yaml` file that you can use to configure the chart. I have tried to include some sensible defaults, but you will likely need to override some values. By efault, the charts will download the version that's under appVersion in the chart's `Chart.yaml` file. This value is kept up-to-date with the latest version of the application by renovate.
