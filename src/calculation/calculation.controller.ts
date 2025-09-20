import { Controller, Get } from '@nestjs/common';

@Controller('calculation')
export class CalculationController {
  @Get()
  getCalculation() {
    return {
      result: 'Calculation result',
      timestamp: new Date().toISOString(),
      value: 42,
      unit: 'kg CO2e'
    };
  }
}
