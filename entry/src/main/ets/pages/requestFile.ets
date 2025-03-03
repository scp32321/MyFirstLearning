import { rcp } from '@kit.RemoteCommunicationKit';


let headers: rcp.RequestHeaders = {
  "accept": "application/json"
};
let content = "data to send";

let token = "sk-P022NNdZnytInokli9Eoj017fkjPwHJ7wQr0eSPrtDKVnYSG";

let req = new rcp.Request("https://query.xiaoai.plus/v1/open-api/quota?key="+token, "get", undefined, undefined, undefined, undefined, undefined);

const session = rcp.createSession();

session.fetch(req).then((response)=>{
  console.log("result" + JSON.stringify(response))
})
