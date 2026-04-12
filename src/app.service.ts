import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello again from 0st_Web!!! 🚀';
  }
}
