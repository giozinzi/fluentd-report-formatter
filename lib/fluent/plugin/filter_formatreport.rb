#
# Copyright 2021- giozinzi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "fluent/plugin/filter"

module Fluent
  module Plugin
    class FormatreportFilter < Fluent::Plugin::Filter
      Fluent::Plugin.register_filter("formatreport", self)

      def configure(conf)
        super
        # No config needed rn
      end

      def customfilter(record, time)
        record.each do |key, val|
          if key != "ip"
            tag = "mdm"
            myRecord = {}
            myRecord["Namespace"] = "ColomanagerFluentdRedfish"
            myRecord["Metric"] = "#{key}"
            myRecord["Dimensions"] = {"Region" => "CentralusEUAP", "IP" => record["ip"]}
            myRecord["Value"] = "#{val}"
            router.emit(tag, time, myRecord)
        end
      end
    end

      def filter(tag, time, record)
        customfilter(record, time)
      end
    end
  end
end
