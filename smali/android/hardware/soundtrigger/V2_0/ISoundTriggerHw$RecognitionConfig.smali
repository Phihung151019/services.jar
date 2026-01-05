.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public captureDevice:I

.field public captureHandle:I

.field public captureRequested:Z

.field public data:Ljava/util/ArrayList;

.field public phrases:Ljava/util/ArrayList;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.captureHandle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .captureDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "NONE"

    goto/16 :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    const-string v1, "BIT_IN"

    goto/16 :goto_0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    const-string v1, "BIT_DEFAULT"

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string/jumbo v1, "OUT_EARPIECE"

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const-string/jumbo v1, "OUT_SPEAKER"

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "OUT_WIRED_HEADSET"

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "OUT_WIRED_HEADPHONE"

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x10

    if-ne v1, v3, :cond_7

    const-string/jumbo v1, "OUT_BLUETOOTH_SCO"

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    const-string/jumbo v1, "OUT_BLUETOOTH_SCO_HEADSET"

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x40

    if-ne v1, v3, :cond_9

    const-string/jumbo v1, "OUT_BLUETOOTH_SCO_CARKIT"

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x80

    if-ne v1, v3, :cond_a

    const-string/jumbo v1, "OUT_BLUETOOTH_A2DP"

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x100

    if-ne v1, v3, :cond_b

    const-string/jumbo v1, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x200

    if-ne v1, v3, :cond_c

    const-string/jumbo v1, "OUT_BLUETOOTH_A2DP_SPEAKER"

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x400

    if-ne v1, v3, :cond_d

    const-string/jumbo v1, "OUT_AUX_DIGITAL"

    goto/16 :goto_0

    :cond_d
    if-ne v1, v3, :cond_e

    const-string/jumbo v1, "OUT_HDMI"

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x800

    if-ne v1, v3, :cond_f

    const-string/jumbo v1, "OUT_ANLG_DOCK_HEADSET"

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x1000

    if-ne v1, v3, :cond_10

    const-string/jumbo v1, "OUT_DGTL_DOCK_HEADSET"

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x2000

    if-ne v1, v3, :cond_11

    const-string/jumbo v1, "OUT_USB_ACCESSORY"

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x4000

    if-ne v1, v3, :cond_12

    const-string/jumbo v1, "OUT_USB_DEVICE"

    goto/16 :goto_0

    :cond_12
    const v3, 0x8000

    if-ne v1, v3, :cond_13

    const-string/jumbo v1, "OUT_REMOTE_SUBMIX"

    goto/16 :goto_0

    :cond_13
    const/high16 v3, 0x10000

    if-ne v1, v3, :cond_14

    const-string/jumbo v1, "OUT_TELEPHONY_TX"

    goto/16 :goto_0

    :cond_14
    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_15

    const-string/jumbo v1, "OUT_LINE"

    goto/16 :goto_0

    :cond_15
    const/high16 v3, 0x40000

    if-ne v1, v3, :cond_16

    const-string/jumbo v1, "OUT_HDMI_ARC"

    goto/16 :goto_0

    :cond_16
    const/high16 v3, 0x80000

    if-ne v1, v3, :cond_17

    const-string/jumbo v1, "OUT_SPDIF"

    goto/16 :goto_0

    :cond_17
    const/high16 v3, 0x100000

    if-ne v1, v3, :cond_18

    const-string/jumbo v1, "OUT_FM"

    goto/16 :goto_0

    :cond_18
    const/high16 v3, 0x200000

    if-ne v1, v3, :cond_19

    const-string/jumbo v1, "OUT_AUX_LINE"

    goto/16 :goto_0

    :cond_19
    const/high16 v3, 0x400000

    if-ne v1, v3, :cond_1a

    const-string/jumbo v1, "OUT_SPEAKER_SAFE"

    goto/16 :goto_0

    :cond_1a
    const/high16 v3, 0x800000

    if-ne v1, v3, :cond_1b

    const-string/jumbo v1, "OUT_IP"

    goto/16 :goto_0

    :cond_1b
    const/high16 v3, 0x1000000

    if-ne v1, v3, :cond_1c

    const-string/jumbo v1, "OUT_BUS"

    goto/16 :goto_0

    :cond_1c
    const/high16 v3, 0x2000000

    if-ne v1, v3, :cond_1d

    const-string/jumbo v1, "OUT_PROXY"

    goto/16 :goto_0

    :cond_1d
    const/high16 v3, 0x4000000

    if-ne v1, v3, :cond_1e

    const-string/jumbo v1, "OUT_USB_HEADSET"

    goto/16 :goto_0

    :cond_1e
    if-ne v1, v2, :cond_1f

    const-string/jumbo v1, "OUT_DEFAULT"

    goto/16 :goto_0

    :cond_1f
    const v2, 0x47ffffff

    if-ne v1, v2, :cond_20

    const-string/jumbo v1, "OUT_ALL"

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x380

    if-ne v1, v2, :cond_21

    const-string/jumbo v1, "OUT_ALL_A2DP"

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0x70

    if-ne v1, v2, :cond_22

    const-string/jumbo v1, "OUT_ALL_SCO"

    goto/16 :goto_0

    :cond_22
    const v2, 0x4006000

    if-ne v1, v2, :cond_23

    const-string/jumbo v1, "OUT_ALL_USB"

    goto/16 :goto_0

    :cond_23
    const v2, -0x7fffffff

    if-ne v1, v2, :cond_24

    const-string v1, "IN_COMMUNICATION"

    goto/16 :goto_0

    :cond_24
    const v2, -0x7ffffffe

    if-ne v1, v2, :cond_25

    const-string v1, "IN_AMBIENT"

    goto/16 :goto_0

    :cond_25
    const v2, -0x7ffffffc

    if-ne v1, v2, :cond_26

    const-string v1, "IN_BUILTIN_MIC"

    goto/16 :goto_0

    :cond_26
    const v2, -0x7ffffff8

    if-ne v1, v2, :cond_27

    const-string v1, "IN_BLUETOOTH_SCO_HEADSET"

    goto/16 :goto_0

    :cond_27
    const v3, -0x7ffffff0

    if-ne v1, v3, :cond_28

    const-string v1, "IN_WIRED_HEADSET"

    goto/16 :goto_0

    :cond_28
    const v3, -0x7fffffe0

    if-ne v1, v3, :cond_29

    const-string v1, "IN_AUX_DIGITAL"

    goto/16 :goto_0

    :cond_29
    if-ne v1, v3, :cond_2a

    const-string v1, "IN_HDMI"

    goto/16 :goto_0

    :cond_2a
    const v3, -0x7fffffc0

    if-ne v1, v3, :cond_2b

    const-string v1, "IN_VOICE_CALL"

    goto/16 :goto_0

    :cond_2b
    if-ne v1, v3, :cond_2c

    const-string v1, "IN_TELEPHONY_RX"

    goto/16 :goto_0

    :cond_2c
    const v3, -0x7fffff80

    if-ne v1, v3, :cond_2d

    const-string v1, "IN_BACK_MIC"

    goto/16 :goto_0

    :cond_2d
    const v3, -0x7fffff00

    if-ne v1, v3, :cond_2e

    const-string v1, "IN_REMOTE_SUBMIX"

    goto/16 :goto_0

    :cond_2e
    const v3, -0x7ffffe00

    if-ne v1, v3, :cond_2f

    const-string v1, "IN_ANLG_DOCK_HEADSET"

    goto/16 :goto_0

    :cond_2f
    const v3, -0x7ffffc00

    if-ne v1, v3, :cond_30

    const-string v1, "IN_DGTL_DOCK_HEADSET"

    goto/16 :goto_0

    :cond_30
    const v3, -0x7ffff800

    if-ne v1, v3, :cond_31

    const-string v1, "IN_USB_ACCESSORY"

    goto/16 :goto_0

    :cond_31
    const v3, -0x7ffff000

    if-ne v1, v3, :cond_32

    const-string v1, "IN_USB_DEVICE"

    goto/16 :goto_0

    :cond_32
    const v3, -0x7fffe000

    if-ne v1, v3, :cond_33

    const-string v1, "IN_FM_TUNER"

    goto/16 :goto_0

    :cond_33
    const v3, -0x7fffc000

    if-ne v1, v3, :cond_34

    const-string v1, "IN_TV_TUNER"

    goto/16 :goto_0

    :cond_34
    const v3, -0x7fff8000

    if-ne v1, v3, :cond_35

    const-string v1, "IN_LINE"

    goto :goto_0

    :cond_35
    const/high16 v3, -0x7fff0000

    if-ne v1, v3, :cond_36

    const-string v1, "IN_SPDIF"

    goto :goto_0

    :cond_36
    const/high16 v3, -0x7ffe0000

    if-ne v1, v3, :cond_37

    const-string v1, "IN_BLUETOOTH_A2DP"

    goto :goto_0

    :cond_37
    const/high16 v3, -0x7ffc0000

    if-ne v1, v3, :cond_38

    const-string v1, "IN_LOOPBACK"

    goto :goto_0

    :cond_38
    const/high16 v3, -0x7ff80000

    if-ne v1, v3, :cond_39

    const-string v1, "IN_IP"

    goto :goto_0

    :cond_39
    const/high16 v3, -0x7ff00000

    if-ne v1, v3, :cond_3a

    const-string v1, "IN_BUS"

    goto :goto_0

    :cond_3a
    const/high16 v3, -0x7f000000

    if-ne v1, v3, :cond_3b

    const-string v1, "IN_PROXY"

    goto :goto_0

    :cond_3b
    const/high16 v3, -0x7e000000

    if-ne v1, v3, :cond_3c

    const-string v1, "IN_USB_HEADSET"

    goto :goto_0

    :cond_3c
    const/high16 v3, -0x40000000    # -2.0f

    if-ne v1, v3, :cond_3d

    const-string v1, "IN_DEFAULT"

    goto :goto_0

    :cond_3d
    const v3, -0x3ce00001    # -159.99998f

    if-ne v1, v3, :cond_3e

    const-string v1, "IN_ALL"

    goto :goto_0

    :cond_3e
    if-ne v1, v2, :cond_3f

    const-string v1, "IN_ALL_SCO"

    goto :goto_0

    :cond_3f
    const v2, -0x7dffe800

    if-ne v1, v2, :cond_40

    const-string v1, "IN_ALL_USB"

    goto :goto_0

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .captureRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .phrases = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iget v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v7, 0x18

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0x1c

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v2, 0x20

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v11

    :goto_0
    const-wide/16 v14, 0x10

    if-ge v13, v2, :cond_1

    move-wide/from16 v16, v3

    iget-object v3, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    mul-int/lit8 v4, v13, 0x20

    move-wide/from16 v18, v5

    int-to-long v5, v4

    iget v4, v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    invoke-virtual {v12, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    move-wide/from16 v20, v7

    add-long v7, v5, v16

    iget v4, v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-virtual {v12, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v7, v5, v18

    iget v4, v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-virtual {v12, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v4, v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-long/2addr v14, v5

    add-long v7, v5, v20

    invoke-virtual {v12, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v5, v9

    invoke-virtual {v12, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x8

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    move v6, v11

    :goto_1
    if-ge v6, v4, :cond_0

    iget-object v7, v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    mul-int/lit8 v8, v6, 0x8

    int-to-long v9, v8

    iget v8, v7, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    invoke-virtual {v5, v9, v10, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, v9, v16

    iget v7, v7, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    invoke-virtual {v5, v9, v10, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v9, 0x1c

    goto :goto_1

    :cond_0
    invoke-virtual {v12, v14, v15, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    const-wide/16 v9, 0x1c

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v14, v15, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x28

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    invoke-virtual {v1, v3, v4, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    invoke-direct {v3, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2
    if-ge v11, v2, :cond_2

    int-to-long v4, v11

    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x20

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 2

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
