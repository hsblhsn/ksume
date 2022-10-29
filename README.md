## Ksume

A **cloud native** resume example. Use Kubernetes to store and view your resume.
Because Kubernetes is the **best way** to do anything in this cloud native world.

#### For cloud native recruiters

If you are hiring a **cloud native** developer,
you should always ask there resume as a kubernetes manifest file.
PDFs are so 2010.

### In Action

```bash
$ kubectl apply -f ksume.yaml
namespace/hsblhsn created
customresourcedefinition.apiextensions.k8s.io/experiments.hsblhsn.me created

$ kubectl apply -f resume.yaml
experiment.hsblhsn.me/resume-of-john-doe created

$ kubectl get resume -n hsblhsn -o yaml 
apiVersion: v1
items:
- apiVersion: hsblhsn.me/v1
  kind: Experiment
  metadata:
    annotations:
      kubectl.kubernetes.io/last-applied-configuration: |
        {"apiVersion":"hsblhsn.me/v1","kind":"Experiment","metadata":{"annotations":{},"name":"resume-of-john-doe","namespace":"hsblhsn"},"spec":{"resume":{"achievements":[{"awarder":"ABC Company","date":"2015-01-01","summary":"I won the award 1.","title":"Award 1"},{"awarder":"XYZ Company","date":"2016-01-01","summary":"I won the award 2.","title":"Award 2"}],"contact":{"address":"1234, Main Street, New York, NY 12345","email":"john.doe@example.com","phone":"+1 123 456 7890","website":"https://example.com"},"education":[{"degree":"Bsc. Computer Science","description":"I studied computer science in ABC University.","end_date":"2014-01-01","gpa":"3.5","institution":"ABC University","start_date":"2010-01-01"}],"links":[{"name":"LinkedIn","url":"https://www.linkedin.com/in/johndoe"},{"name":"GitHub","url":"https://www.github.com/in/johndoe"}],"profile":{"full_name":"John Doe","introductory":"I am a software engineer with 5 years of experience in the industry."},"skills":[{"items":["Python","Java","C++"],"kind":"Programming Languages"},{"items":["HTML","CSS"],"kind":"Web Technologies"}],"work_experience":[{"company":"ABC Company","description":"I worked as a software engineer in ABC Company.","end_date":"2017-01-01","highlights":["I worked on project X.","I worked on project Y."],"position":"Software Engineer","start_date":"2015-01-01"},{"company":"XYZ Company","description":"I worked as a senior software engineer in XYZ Company.","end_date":"2019-01-01","highlights":["I worked on project X.","I worked on project Y."],"position":"Senior Software Engineer","start_date":"2017-01-01"}]}}}
    creationTimestamp: "2022-10-29T15:53:46Z"
    generation: 1
    name: resume-of-john-doe
    namespace: hsblhsn
    resourceVersion: "7580"
    uid: 73167065-8481-4f37-9689-8c9e46283466
  spec:
    resume:
      achievements:
      - awarder: ABC Company
        date: "2015-01-01"
        summary: I won the award 1.
        title: Award 1
      - awarder: XYZ Company
        date: "2016-01-01"
        summary: I won the award 2.
        title: Award 2
      contact:
        address: 1234, Main Street, New York, NY 12345
        email: john.doe@example.com
        phone: +1 123 456 7890
        website: https://example.com
      education:
      - degree: Bsc. Computer Science
        description: I studied computer science in ABC University.
        end_date: "2014-01-01"
        gpa: "3.5"
        institution: ABC University
        start_date: "2010-01-01"
      links:
      - name: LinkedIn
        url: https://www.linkedin.com/in/johndoe
      - name: GitHub
        url: https://www.github.com/in/johndoe
      profile:
        full_name: John Doe
        introductory: I am a software engineer with 5 years of experience in the industry.
      skills:
      - items:
        - Python
        - Java
        - C++
        kind: Programming Languages
      - items:
        - HTML
        - CSS
        kind: Web Technologies
      work_experience:
      - company: ABC Company
        description: I worked as a software engineer in ABC Company.
        end_date: "2017-01-01"
        highlights:
        - I worked on project X.
        - I worked on project Y.
        position: Software Engineer
        start_date: "2015-01-01"
      - company: XYZ Company
        description: I worked as a senior software engineer in XYZ Company.
        end_date: "2019-01-01"
        highlights:
        - I worked on project X.
        - I worked on project Y.
        position: Senior Software Engineer
        start_date: "2017-01-01"
kind: List
metadata:
  resourceVersion: ""
 
```

### Sample Resume

```yaml
apiVersion: v1
items:
  - apiVersion: hsblhsn.me/v1
    kind: Experiment
    metadata:
      annotations:
        kubectl.kubernetes.io/last-applied-configuration: |
          {"apiVersion":"hsblhsn.me/v1","kind":"Experiment","metadata":{"annotations":{},"name":"resume-of-john-doe","namespace":"hsblhsn"},"spec":{"resume":{"achievements":[{"awarder":"ABC Company","date":"2015-01-01","summary":"I won the award 1.","title":"Award 1"},{"awarder":"XYZ Company","date":"2016-01-01","summary":"I won the award 2.","title":"Award 2"}],"contact":{"address":"1234, Main Street, New York, NY 12345","email":"john.doe@example.com","phone":"+1 123 456 7890","website":"https://example.com"},"education":[{"degree":"Bsc. Computer Science","description":"I studied computer science in ABC University.","end_date":"2014-01-01","gpa":"3.5","institution":"ABC University","start_date":"2010-01-01"}],"links":[{"name":"LinkedIn","url":"https://www.linkedin.com/in/johndoe"},{"name":"GitHub","url":"https://www.github.com/in/johndoe"}],"profile":{"full_name":"John Doe","introductory":"I am a software engineer with 5 years of experience in the industry."},"skills":[{"items":["Python","Java","C++"],"kind":"Programming Languages"},{"items":["HTML","CSS"],"kind":"Web Technologies"}],"work_experience":[{"company":"ABC Company","description":"I worked as a software engineer in ABC Company.","end_date":"2017-01-01","highlights":["I worked on project X.","I worked on project Y."],"position":"Software Engineer","start_date":"2015-01-01"},{"company":"XYZ Company","description":"I worked as a senior software engineer in XYZ Company.","end_date":"2019-01-01","highlights":["I worked on project X.","I worked on project Y."],"position":"Senior Software Engineer","start_date":"2017-01-01"}]}}}
      creationTimestamp: "2022-10-29T15:53:46Z"
      generation: 1
      name: resume-of-john-doe
      namespace: hsblhsn
      resourceVersion: "7580"
      uid: 73167065-8481-4f37-9689-8c9e46283466
    spec:
      resume:
        achievements:
          - awarder: ABC Company
            date: "2015-01-01"
            summary: I won the award 1.
            title: Award 1
          - awarder: XYZ Company
            date: "2016-01-01"
            summary: I won the award 2.
            title: Award 2
        contact:
          address: 1234, Main Street, New York, NY 12345
          email: john.doe@example.com
          phone: +1 123 456 7890
          website: https://example.com
        education:
          - degree: Bsc. Computer Science
            description: I studied computer science in ABC University.
            end_date: "2014-01-01"
            gpa: "3.5"
            institution: ABC University
            start_date: "2010-01-01"
        links:
          - name: LinkedIn
            url: https://www.linkedin.com/in/johndoe
          - name: GitHub
            url: https://www.github.com/in/johndoe
        profile:
          full_name: John Doe
          introductory: I am a software engineer with 5 years of experience in the industry.
        skills:
          - items:
              - Python
              - Java
              - C++
            kind: Programming Languages
          - items:
              - HTML
              - CSS
            kind: Web Technologies
        work_experience:
          - company: ABC Company
            description: I worked as a software engineer in ABC Company.
            end_date: "2017-01-01"
            highlights:
              - I worked on project X.
              - I worked on project Y.
            position: Software Engineer
            start_date: "2015-01-01"
          - company: XYZ Company
            description: I worked as a senior software engineer in XYZ Company.
            end_date: "2019-01-01"
            highlights:
              - I worked on project X.
              - I worked on project Y.
            position: Senior Software Engineer
            start_date: "2017-01-01"
kind: List
metadata:
  resourceVersion: ""
```

### License

Do whatever the heck you want to do with this code.
