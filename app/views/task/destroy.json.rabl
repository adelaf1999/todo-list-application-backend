if @success != nil
    node(:success) { @success }
end

if @message != nil
    node(:message) { @message }
end

if @tasks != nil
    node(:tasks) { @tasks }
end