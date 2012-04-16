module EventMachine
  module WorkQueue
    class WorkQueue
      attr_accessor :queue, :block

      def initialize(&block)
        @queue = EM::Queue.new
        @status = false
        @block = block

        @queue_worker = Proc.new do |i|
          if running?
            @block.call i
            @queue.pop &@queue_worker
          end
        end
      end

      def push(val)
        self.queue.push val
      end

      def running?
        @status
      end

      def start
        @status = true
        @queue.pop &@queue_worker
      end

      def stop
        @status = false
      end
    end
  end
end
