class Model::Page::CronJobs < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/reports/status/run-cron"
end