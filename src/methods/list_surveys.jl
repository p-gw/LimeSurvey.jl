export list_surveys

function list_surveys(client::Client; username::Union{AbstractString,Nothing}=nothing)
    payload = construct_payload("list_surveys", [client.session_key, username])
    response = call_limesurvey_api(client, payload)
    return response
end