require 'spec_helper'
include EM::WorkQueue

describe WorkQueue do
  it 'should create a queue' do
    WorkQueue.new.queue.class.should be_kind_of(EM::Queue.class)
  end

  it 'should push values onto the queue when push is called' do
    EM.run do
      subject = WorkQueue.new
      subject.push 'foobar'
      subject.queue.empty?.should == false
      EM.stop
    end
  end

  it 'should set running to false' do
    WorkQueue.new.running?.should == false
  end

  it 'should set running to true when start is called' do
    subject = WorkQueue.new
    subject.start
    subject.running?.should == true
  end

  it 'should set running to false when stop is called' do
    subject = WorkQueue.new
    subject.start
    subject.stop
    subject.running?.should == false
  end
end
