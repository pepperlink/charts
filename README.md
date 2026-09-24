# helm-charts

My personal collection of Helm charts. They're a bit messy, really.

I am currently working on updating them all to use bjw-s [Common Library](https://bjw-s-labs.github.io/helm-charts/docs/common-library/). Charts that are already ported will have version numbers starting with 0.2.

## Usage
Add the repository to your Helm installation:

```bash
helm repo add pepperlink https://pepperlink.github.io/charts
```

Charts will have a `values.yaml` file that you can use to configure the chart. I have tried to include some sensible defaults, but you will likely need to override some values. By efault, the charts will download the version that's under appVersion in the chart's `Chart.yaml` file. This value is kept up-to-date with the latest version of the application by renovate.

## Build & deploy

- **Artifacts:** chart packages + `index.yaml`, published to the Helm repo at **<https://pepperlink.github.io/charts>** (the `gh-pages` branch of this repo); each chart release is also a GitHub release (`<chart>-<version>`).
- **Build:** GitHub Actions — [`release.yaml`](.github/workflows/release.yaml) runs chart-releaser on merged PRs and manual dispatch; [`bump-and-gen.yaml`](.github/workflows/bump-and-gen.yaml) auto-bumps chart versions and regenerates the chart READMEs (helm-docs) on `renovate/**` branches.
- **Consumed by:** `pepperlink/home` — the cluster apps deploy these charts (including `superchartme`); versions bumped by Renovate.
- **Manual steps:** none — merging a version bump publishes.
