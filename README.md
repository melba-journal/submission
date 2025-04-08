# MELBA submission


This repository is used as a ressource for authors wishing to submit to the [MELBA journal](https://www.melba-journal.org). The repository is structured as follow:
* [Cover letter](#cover-letter)
* [Latex formatting instructions](#latex-formatting-instructions)
    * [Submission](#submission)
* [Accepted papers instructions](#accepted-papers-instructions)
    * [Camera ready](#camera-ready)
    * [arXiv upload](#arxiv-upload)
* [Special issues](#special-issues)

Thank you for submitting to MELBA!

## Cover letter
Any new submission to MELBA should be accompanied by a cover letter. Authors can use the following template as a starting point:

**`[PLEASE FOLLOW INSTRUCTIONS IN SQUARE BRACKETS. BEFORE SUBMISSION, ERASE ALL INSTRUCTIONS.]`**

>
> [INSERT DATE]
>
> Dear Editor,
>
> We hereby submit our paper entitled:
>
> [INSERT TITLE]
>
> By following authors:
>
> [INSERT AUTHOR NAMES]
>
> We acknowledge that:
> - All authors have approved the submission for publication and consent to its review by MELBA.
> - Authorship implies taking full responsibility for the accuracy and originality of the content of the submission.
> - The work presented followed all appropriate ethical standards in conducting research and writing the manuscript, following all applicable laws and regulations regarding treatment of animals or human subjects.
> - [OPTIONAL, BUT ENCOURAGED] The code, models, and/or data to replicate the results presented in this paper are made publicly available at: [INSERT LINK]
>
> [PLEASE KEEP ONLY ONE OF THE FOLLOWING TWO STATEMENTS]
>
> This is an original submission and there is no other paper (published or under review) with significant overlapping content.
>
> [OR]
>
> This submission is an extension of a previous conference or workshop paper. [PLEASE PROVIDE REFERENCE TO THE PRIOR PAPER AND INSERT A DESCRIPTION OF THE EXTENSION WORK].
> 
> [PLEASE DISCLOSE IF YOU USED A LARGE-LANGUAGE MODEL, AND HOW IT WAS USED. MELBA POLICY ALLOWS LLMS TO BE USED TO HELP POLISH TEXT OR DRAFT INITIAL BULLET-POINT STRUCTURES, BUT TO NOT WRITE ENTIRE SECTIONS OR PARAGRAPHS.]
>
> [PLEASE DISCLOSE BELOW AND IN THE MANUSCRIPT ANY FINANCIAL, COMMERCIAL, OR PERSONAL CONFLICTS OF INTEREST THAT MIGHT HAVE BIASED YOUR WORK. IF THERE ARE NONE, PLEASE STATE SO.]
>
> [PLEASE DISCLOSE ANY CONFLICTS THAT MIGHT POTENTIALLY BIAS THE PEER REVIEW - E.G., AN AUTHOR HAS A CLOSE RELATIONSHIP WITH AN EDITOR. FEEL FREE TO SUGGEST EDITOR(S) AND/OR POTENTIAL REVIEWER(S) WHO SHOULD NOT BE INVOLVED IN THE EVALUATION. IF THERE ARE NO CONFLICTS/CONCERNS, PLEASE STATE SO]
>
>
> Sincerely,
>
> [INSERT CORRESPONDING AUTHOR’S NAME AND SIGNATURE]


## Latex formatting instructions
We provide a [minimalist latex template](latex/melba-sample.tex), requiring only the [melba.sty](latex/melba.sty) style file. Samples PDFs, from different stage during the reviewing process, are available:
* [submission](latex/melba-sample-in-submission.pdf): to submit a manuscript for review (mandatory, using any other template will result in a desk reject);
* [arxiv-submission](latex/melba-sample-arxiv-submission.pdf): to upload a manuscript on arXiv while it is being reviewed (turns off line-numbers);
* [accepted](latex/melba-sample-accepted.pdf): to use once the paper has been accepted and is moving to publication stage;
* [accepted in a special issue](latex/melba-sample-accepted-special-issue.pdf): to use for accepted paper *that belong to a special issue only*.

### Submission
By default, line-numbering is enabled, and any un-needed display (such as issue information) is disabled. During submission, authors **should not** modify it.

This correspond to the template that we provide 'as-in', authors should not need to modify anything at that stage.


## Accepted papers instructions
These are the final formatting and submission instructions for MELBA **Accepted** papers, **please read them carefully.**
The publishing editor will guide you through it, and _may ask for changes if you deviate from it; **which might delay final publication.**_

At every step below where we ask for communication or delivery of a file, please use the scholastica [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) mechanism.

### Camera ready

1. Switch the template option to `accepted` in the first lines of the latex: `\usepackage[accepted]{melba}`;
1. populate the `\melbaheading` command [as instructed in the latex comments](https://github.com/melba-journal/submission/blob/master/latex/melba-sample.tex#L29) with the information provided by the publishing editor;
1. complete the **Ethical Standards** and **Conflicts of Interest** sections at the end of the paper;
1. upload your final pdf version via the [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) page;
1. please also provide a representative, high-resolution image of your paper—this will act as a graphical abstract on the [MELBA website](https://www.melba-journal.1org);
1. (Optional) authors can also send a video presentation of their paper, that would be embedded into the website.


Nowadays, MELBA publishes directly the papers (as opposed to initially being an arXiv-overlay), but it is still preferred that authors also upload their papers in arXiv (and other archive repository when relevant, e.g. HAL).
**When submitting to arXiv, if a pre-print already exists, please update it instead of creating a new arXiv submission.**
Please pay attention to the following fields (`YYYY:NNN` is the MELBA paper ID that has been communicated earlier by the publishing editor):

| Field | Value  |
|-------|--------|
| License | `CC-BY 4.0` |
| Comment | `Accepted for publication at the Journal of Machine Learning for Biomedical Imaging (MELBA)  https://melba-journal.org/YYYY:NNN` |
| journal-ref | `Machine.Learning.for.Biomedical.Imaging. 2 (2023)` |
| DOI | value communicated by the publishing editor |



<!-- 1. the license should be `CC-BY 4.0`;
1. the arXiv Comments field **must** say "*Accepted for publication at the Journal of Machine Learning for Biomedical Imaging (MELBA)  https://www.melba-journal.org/papers/YYYY:NNN.html*". `YYYY:NNN` is the MELBA paper ID that has been communicated earlier by the publishing editor;
1. moreover, the `journal-ref` field should contain `Machine.Learning.for.Biomedical.Imaging. 1 (2022)`; -->
1. Let us know of the final arXiv preprint ID (e.g. 1809.05231) and version (e.g. v3);
1. once this is done, **no further updates are permitted** to the arxiv submission, as any update would not have been reviewed by the MELBA journal.

## Special issues
The following special issues are currently open for submissions:
* **[special issue on Fairness of AI in Medical Imaging (FAIMI)](https://www.melba-journal.org/blog/016-special-issue-faimi.html)** Deadline 2025/04/21

MELBA has currently the following published special issues:
* **Medical Imaging with Deep Learning (MIDL) 2020**
*Guest Editors:* Marleen de Bruijne, Tal Arbel, Ismail Ben Ayed, Hervé Lombaert
* **Uncertainty for Safe Utilization of Machine Learning in Medical Imaging (UNSURE) 2020**
*Guest Editors:* Christian Baumgartner, Adrian Dalca, Carole Sudre, Ryutaro Tanno, Sandy Wells
* **Information Processing in Medical Imaging (IPMI) 2021**
*Guest Editors:* Aasa Feragen, Stefan Sommer, Julia Schnabel, Mads Nielsen
* **MICCAI 2021 Workshops Ominibus -- DART**
*Guest Editors:* Ziyue Xu, Konstantinos Kamnitsas
* **Perinatal, Preterm and Paediatric Image Analysis (PIPPI) 2021**
*Guest Editors:* Esra Abaci-Turk, Jana Hutter, Roxane Licandro, Christopher Macgowan, Andrew Melbourne
* **MICCAI 2022 UNSURE Workshop**
*Guest Editors:* Christian Baumgartner, Adrian Dalca, Koen Van Leemput, Raghav Mehta, Chen Qin, Carole Sudre, Ryutaro Tanno, William (Sandy) Wells
* **Machine Learning in Clinical Neuroimaging (MLCN) 2022**
*Guest Editors:* Seyed Mostafa Kia, Mohamad Habes
* **Perinatal, Preterm and Paediatric Image Analysis (PIPPI) 2022**
*Guest Editors:* Jana Hutter, Roxane Licandro, Andrew Melbourne, Esra Abaci Turk, Daphna Link-Sourani, Christopher Macgowan
* **Special Issue for Generative Models**
*Guest Editors:*  Mert Sabuncu, Sotirios A. Tsaftaris
* **Special Issue on Image Registration**
*Guest Editors:*  Veronika Zimmer, Alessa Hering, Mattias Heinrich
* **MICCAI 2023 LNQ challenge special issue**
*Guest Editors:*  Steve Pieper, Erik Ziegler, Tawa Idris, Bhanusupriya Somarouthu, Reuben Dorent, Gordon Harris, Ron Kikinis
* **Uncertainty for Safe Utilization of Machine Learning in Medical Imaging (UNSURE) 2023** *Guest Editors:* Christian Baumgartner, Adrian Dalca, Raghav Mehta, Chen Qin, Carole Sudre, William (Sandy) Wells
* **Interpretability of Machine Intelligence in Medical Image Computing (iMIMIC) 2023** *Guest editors:* Mauricio Reyes, Jaime Cardoso, Jayashree Kalpathy-Cramer, Nguyen Le Minh, Pedro Abreu, José Amorim, Wilson Silva, Mara Graziani, Amith Kamath
