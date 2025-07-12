// import path alias fails; strict null checks not enforced
import { User } from '@shared/models/user';

export function getUserName(user: User | null): string {
  // Null safety is not enforced here due to misconfiguration
  return user.name;
}
