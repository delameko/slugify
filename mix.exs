defmodule Slug.Mixfile do
  use Mix.Project

  @github_url "https://github.com/jayjun/slugify"

  def project do
    [
      app: :slugify,
      version: "1.1.0",
      elixir: "~> 1.4",
      name: "Slugify",
      description: "Transform strings from any language to slugs for URLs, filenames or fun",
      deps: deps(),
      package: package(),
      source_url: @github_url,
      docs: [main: "Slug", api_reference: false, extra_section: []]
    ]
  end

  def application do
    [extra_applications: []]
  end

  defp deps do
    [
      {:credo, "~> 1.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

  defp package do
    [maintainers: ["Tan Jay Jun"], licenses: ["MIT"], links: %{"GitHub" => @github_url}]
  end
end
