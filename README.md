# MELBA submission

This repository is used as a ressource for authors wishing to submit to the [Melba journal](https://www.melba-journal.org). The repository is structured as follow:
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
* [submission](latex/melba-sample-in-submission.pdf): to submit a manuscript for review (mandatory, using any other template will result in a desk reject);
* [arxiv-submission](latex/melba-sample-arxiv-submission.pdf): to upload a manuscript on arXiv while it is being reviewed (turns off line-numbers);
* [accepted](latex/melba-sample-accepted.pdf): to use once the paper has been accepted and is moving to publication stage;
* [accepted in a special issue](latex/melba-sample-accepted-special-issue.pdf): to use for accepted paper *that belong to a special issue only*.

### Submission
By default, line-numbering is enabled, and any un-needed display (such as issue information) is disabled. During submission, authors **should not** modify it.

This correspond to the template that we provide 'as-in', authors should not need to modify anything at that stage.


### Accepted papers
These are the final formatting and submission isntructions for MELBA **Accepted** papers.

At every step below where we ask for communication or delivery of a file, please use the scholastica [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) mechanism. The publishing editor will guide you and help you during this process.

1. Switch the template option to ‘accepted’ option in the first lines of the latex: `\usepackage[accepted]{melba}`;
1. populate the `\melbaheading` command [as instructed in the latex comments](https://github.com/melba-journal/submission/blob/master/latex/melba-sample.tex#L29) with the information provided by the publishing editor;
1. complete the **Ethical Standards** and **Conflicts of Interest** sections at the end of the paper;
1. upload your final pdf version via the [Discussions](https://help.scholasticahq.com/article/117-how-do-discussions-work) page;
1. please also provide a representative, high-resolution image of your paper—this will act as a graphical abstract on the [Melba website](https://www.melba-journal.org);
1. (Optional) authors can also send a video presentation of their paper, that would be embedded into the website;
1. once validated by the publishing editor, upload this final paper version to arXiv *without any further changes*. Please do **not** upload it before you have received final pdf acceptance. The arXiv Comments field **must** say *“Accepted for publication at the Journal of Machine Learning for Biomedical Imaging (MELBA)  https://www.melba-journal.org”*. If you have already uploaded an earlier preprint to arxiv (e.g. if you chose that route for submission to MELBA), please update that version instead of creating a new arXiv submission.
1. let us know of the final arXiv preprint ID (e.g. 1809.05231) and version (e.g. v3);
1. once this is done, **no further updates are permitted** to the arxiv submission, as any update would not have been reviewed by the MELBA journal.


## Special issues
Melba has currently the following special issues:
* Medical Imaging with Deep Learning (MIDL) 2020
*Guest Editors:* Marleen de Bruijne, Tal Arbel, Ismail Ben Ayed, Hervé Lombaert
* Uncertainty for Safe Utilization of Machine Learning in Medical Imaging (UNSURE) 2020
*Guest Editors:* Christian Baumgartner, Adrian Dalca, Carole Sudre, Ryutaro Tanno, Sandy Wells
* Information Processing in Medical Imaging (IPMI) 2021
*Guest Editors:* Aasa Feragen, Stefan Sommer, Julia Schnabel, Mads Nielsen