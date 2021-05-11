import { ICreateSpecificationDTO } from "../dto/ICreateSpecificationDTO";
import { Specification } from "../model/Specification";

interface ISpecificationsRepository {
    create({ name, description }: ICreateSpecificationDTO): void;
    findByName(name: string): Specification;
}

export { ISpecificationsRepository };
