import { MapPinIcon } from "@heroicons/react/24/outline";
import { formatDistance } from "date-fns";

type Job = {
  title: string;
  location: string;
  datePosted: Date;
  iconUrl: string;
  organization: string;
};

interface JobProps {
  job: Job;
}

function JobItem({ job }: JobProps) {
  job.datePosted = new Date(job.datePosted);
  const relativeTime = formatDistance(job.datePosted, new Date(), {
    addSuffix: true,
  });
  console.log(123, job);
  return (
    <div className="flex p-4 gap-6 ">
      <div>
        <img className="w-20 rounded-full" src={job.iconUrl} alt="icon" />
      </div>
      <div className="flex justify-between w-full items-center">
        <div className="flex flex-col gap-4">
          <div className="text-xl font-semibold">{job.title}</div>
          <div className="text-gray-600">{job.organization}</div>
        </div>
        <div className="flex flex-col gap-4">
          <span className="self-end flex gap-2">
            {" "}
            <MapPinIcon className="w-4" /> {job.location}
          </span>
          <span className="text-sm text-gray-600">Posted {relativeTime}</span>
        </div>
      </div>
    </div>
  );
}

export default function Listings(props: { jobs: Job[] }) {
  const jobs = props.jobs;
  console.log(jobs);
  return (
    <div className="divide-y flex-grow">
      {jobs
        .sort((a, b) => b.datePosted.getTime() - a.datePosted.getTime())
        .map((job, idx) => (
          <JobItem key={idx} job={job} />
        ))}
    </div>
  );
}
