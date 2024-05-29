cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cardiac-arrythmia-elixhauser-primary-care-defibrillation---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-defibrillation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  transluminal-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: transluminal-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-defibrillation---primary/output
  cardiac-arrythmia-elixhauser-primary-care-excitation---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-excitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: transluminal-cardiac-arrythmia-elixhauser-primary-care---primary/output
  biventricular-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: biventricular-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-excitation---primary/output
  cardiac-arrythmia-elixhauser-primary-care-implant---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-implant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: biventricular-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-introduced---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-introduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-implant---primary/output
  intravenous-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: intravenous-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-introduced---primary/output
  cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: intravenous-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-bouverethoffmann---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-bouverethoffmann---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-hemiblock---primary/output
  cardiac-arrythmia-elixhauser-primary-care-preexcitation---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-preexcitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-bouverethoffmann---primary/output
  sinuatrial-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: sinuatrial-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-preexcitation---primary/output
  cardiac-arrythmia-elixhauser-primary-care-arrhythmia---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-arrhythmia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: sinuatrial-cardiac-arrythmia-elixhauser-primary-care---primary/output
  ectopic-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: ectopic-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-arrhythmia---primary/output
  cardiac-arrythmia-elixhauser-primary-care-conduction---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-conduction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ectopic-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-dysrhythmia---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-dysrhythmia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-conduction---primary/output
  trifascicular-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: trifascicular-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-dysrhythmia---primary/output
  cardiac-arrythmia-elixhauser-primary-care-battery---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-battery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: trifascicular-cardiac-arrythmia-elixhauser-primary-care---primary/output
  other-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: other-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-battery---primary/output
  nodal-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: nodal-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-testing---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-testing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: nodal-cardiac-arrythmia-elixhauser-primary-care---primary/output
  paroxysmal-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: paroxysmal-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-testing---primary/output
  cardiomyopathy-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: cardiomyopathy-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: paroxysmal-cardiac-arrythmia-elixhauser-primary-care---primary/output
  single-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: single-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cardiomyopathy-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-electrocardiogram---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-electrocardiogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: single-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-specified---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-electrocardiogram---primary/output
  complex-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: complex-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-specified---primary/output
  ventricular-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: ventricular-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: complex-cardiac-arrythmia-elixhauser-primary-care---primary/output
  sinoatrial-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: sinoatrial-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ventricular-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-history---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: sinoatrial-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-maintenance---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-maintenance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-history---primary/output
  junctional-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: junctional-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-maintenance---primary/output
  supraventricular-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: supraventricular-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: junctional-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-wolffparkinson-white---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-wolffparkinson-white---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: supraventricular-cardiac-arrythmia-elixhauser-primary-care---primary/output
  abnormal-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: abnormal-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-wolffparkinson-white---primary/output
  cardiac-arrythmia-elixhauser-primary-care-pacemaker---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-pacemaker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: abnormal-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-ablation---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-ablation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-pacemaker---primary/output
  cardiac-arrythmia-elixhauser-primary-care-adjustment---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-adjustment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-ablation---primary/output
  cardiac-arrythmia-elixhauser-primary-care-depolarization---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-depolarization---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-adjustment---primary/output
  cardiac-arrythmia-elixhauser-primary-care---primary:
    run: cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-depolarization---primary/output
  cardiac-arrythmia-elixhauser-primary-care-prolonged---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care---primary/output
  referral-cardiac-arrythmia-elixhauser-primary-care---primary:
    run: referral-cardiac-arrythmia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-prolonged---primary/output
  cardiac-arrythmia-elixhauser-primary-care-resiting---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-resiting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: referral-cardiac-arrythmia-elixhauser-primary-care---primary/output
  cardiac-arrythmia-elixhauser-primary-care-complication---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-resiting---primary/output
  cardiac-arrythmia-elixhauser-primary-care-first---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-complication---primary/output
  cardiac-arrythmia-elixhauser-primary-care-lownganong-levine---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-lownganong-levine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-first---primary/output
  cardiac-arrythmia-elixhauser-primary-care-third---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-lownganong-levine---primary/output
  cardiac-arrythmia-elixhauser-primary-care-beats---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-beats---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-third---primary/output
  cardiac-arrythmia-elixhauser-primary-care-removal---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-beats---primary/output
  cardiac-arrythmia-elixhauser-primary-care-interval---primary:
    run: cardiac-arrythmia-elixhauser-primary-care-interval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-removal---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: cardiac-arrythmia-elixhauser-primary-care-interval---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
