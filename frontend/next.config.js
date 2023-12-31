/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    appDir: true,
    serverComponentsExternalPackages: ['@acme/ui', 'mongodb'],
  },
}

module.exports = nextConfig
