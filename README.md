# MELBA submission

This repository is used as a ressource for authors wishing to submit to the [Melba journal](https://melba-journal.org). The repository is structured as follow:
* [Cover letter](#cover-letter)
* [Latex formatting instructions](#latex-formatting-instructions)
    * [Submission](#submission)
    * [Accepted papers](#accepted-papers)
* [Special issues](#special-issues)

Thank you for submitting to MELBA!

## Cover letter
Any new submission to Melba should be accompanied by a cover letter. Authors can use the following template as a starting point:
> Dear Editor,
>
> We are happy to submit our manuscript for peer review at the Journal of Machine Learning for Biomedical Imaging (MELBA).
>
> [INSERT TEXT THAT DESCRIBES THE CORE CONTRIBUTIONS OF THE PAPER AND WHY IT WOULD BE SUITABLE FOR MELBA]
>
> [INSERT TEXT THAT CONFIRMS ORIGINALITY]
> E.g. “The submitted work is original (or a substantially extended version of a conference paper presented at XXXX), is not and will not be under peer review or published elsewhere until an editorial decision has been made by MELBA or the authors > officially withdraw their submission.”
>
> [INSERT TEXT ABOUT ETHICAL DECLARATIONS]
> E.g. “All the authors mentioned in the manuscript have agreed to authorship, read and approved the manuscript, and given > consent for submission and subsequent publication of the manuscript.”
> “All data analyzed in this manuscript were collected with appropriate IRB approval and following relevant ethical guidelines”
>
> [INSERT TEXT THAT DISCUSSES CODE AND/OR DATA AVAILABILITY. PLEASE DISCUSS ANY FURTHER ATTEMPTS THAT PROMOTES THE > REPRODUCIBILITY OF THE SUBMITTED WORK]
> E.g. “The code and data to replicate the results presented in this paper are made publicly available at: XXXX”
>
> If you have questions or concerns, please feel free to ask questions on the Issues board or editors@melba-journal.org, or do Pull Requests where appropriate.

## Latex formatting instructions
We provide a [minimalist latex template](latex/melba-sample.tex), requiring only the [melba.sty](latex/melba.sty) style file. Samples PDFs, from different stage during the reviewing process, are available:
* [submission](latex/melba-sample-in-submission.pdf)
* [accepted](latex/melba-sample-accepted.pdf)
* [accepted in a special issue](latex/melba-sample-accepted-special-issue.pdf)

### Submission
During submission, the authors **must** use the `submission` for the melba package, i.e. `\usepackage[submission]{melba}`. It will turn on the line numbering (for easier reviewing process), and disable any un-needed display (such as issue information).

This correspond to the template that we provide 'as-in', so authors should not need to modify anything at that stage.


### Accepted papers
These are the final formatting and submission isntructions for MELBA **Accepted** papers.

At every step below where we ask for communication or delivery of a file, please use the scholastica [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) mechanism.

1. Switch the template option to ‘final’ option in the first lines of the latex: `\usepackage[final]{melba}`
2. Please populate the `\melbaheading` command options as instructed in the latex comments with the article information provided in the final acceptance email.
3. Complete the **Ethical Standards** and **Conflicts of Interest** sections at the end of the paper.
4. Upload your final pdf version via the [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) page.
5. When the MELBA Associate Editor accepts the pdf version, upload this final paper version to arXiv *without any further changes*. Please do **not** upload it before you have received final pdf acceptance. The arXiv Comments field **must** say *“Accepted for publication at the Journal of Machine Learning for Biomedical Imaging (MELBA)  https://melba-journal.org”*. If you have already uploaded an earlier preprint to arxiv (e.g. if you chose that route for submission to MELBA), please update that version instead of creating a new arXiv submission.
6. Let us know of the final arXiv preprint ID (e.g. 1809.05231) and version (e.g. v3), and a representative high-resolution image to include in our announcements.
7. Once this is done, **no further updates are permitted** to the arxiv submission, as any update would not have been reviewed by the MELBA journal.


## Special issues
Melba has currently the following special issues:
* Medical Imaging with Deep Learning (MIDL) 2020
*Guest Editors:* Marleen de Bruijne, Tal Arbel, Ismail Ben Ayed, Hervé Lombaert

