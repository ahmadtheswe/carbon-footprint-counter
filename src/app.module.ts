import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CalculationController } from './calculation/calculation.controller';

@Module({
  imports: [],
  controllers: [AppController, CalculationController],
  providers: [AppService],
})
export class AppModule {}
