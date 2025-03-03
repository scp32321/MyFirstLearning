export class User{
  name:string;
  sex:bollen;
  age:number;

  public Say(): string{
    return '你好，我是${this.name}'
  }
}