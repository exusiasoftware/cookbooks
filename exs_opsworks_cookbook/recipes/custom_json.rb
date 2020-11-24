Chef::Log.info("********** For customer '#{node['customer-id']}' invoice '#{node['invoice-number']}' **********")
Chef::Log.info("********** Invoice line number 1 is a '#{node['line-items']['line-1']}'**********")
Chef::Log.info("********** Invoice line number 2 is a '#{node['line-items']['line-2']}'**********")
Chef::Log.info("********** Invoice line number 3 is a '#{node['line-items']['line-3']}'**********")

#Advanced, Custom Chef JSON,
# {
#     "customer-id": "0123",
#     "invoice-number": "9876",
#     "line-items": {
#     "line-1": "tractor",
#     "line-2": "passenger car",
#     "line-3": "trailer"
# }