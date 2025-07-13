24th May 2025 10:58

Status: 
Tags: 


## Virtualization
OS abstracts physical resources into virtual resources such that each process believes it has own private set of resources, while OS manages its access and sharing for different processes.

**My Understanding:** For different process they need resources (CPU, Memory, Disk etc) to do something, now as our computer is running many processes together to accommodate every process gets a share of resource OS tricks them into believing they have full control of the resouce ie Resource Sharing or Management.


#### <u>Virtualization of CPU</u>
This is the illusion done by OS, turning a single CPU into seemingly many separate CPUs on which multiple programs can run concurrently and independently. This is done through CPU scheduling giving different processes a share of CPU for a given time turn by turn.

#### <u>Virtualization of Memory</u>
OS creates an illusion for different process as if they are accessing their own private memory but in reality they are using the same physical RAM.
OS creates <u>virtual address space</u> for each of the program, programs access and update memory in their private space which is independent of other programs. This <u>virtual address space</u>  is mapped to physical memory of the machine by the OS.


## References
