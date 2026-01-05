.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field public final mDestination:I

.field public final mOpcode:I

.field public final mParams:[B

.field public final mSource:I

.field public final mValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 p1, p3, 0xff

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    iput p4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 9

    and-int/lit16 v0, p3, 0xff

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "No validation information for the opcode: "

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    move v7, v2

    goto :goto_1

    :cond_1
    iget v0, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validSources:I

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validDestinations:I

    invoke-static {p1, p2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    move v7, v0

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-interface {v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method public static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 10

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x7fff

    const/16 v1, 0x73

    const/4 v2, 0x0

    if-eq p2, v1, :cond_5

    const/16 v1, 0xa6

    if-eq p2, v1, :cond_0

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    :cond_0
    const p2, 0x8000

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0xa6

    move v4, p0

    move v5, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v3

    :cond_1
    move v5, p0

    move v6, p1

    move-object v9, p3

    array-length p0, v9

    const/4 p1, 0x4

    if-ge p0, p1, :cond_2

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v7, 0xa6

    const/4 v8, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v4

    :cond_2
    aget-byte p0, v9, v2

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v8

    const/4 p0, 0x2

    invoke-static {p0, v9}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v7, 0xa6

    const/4 v8, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, v9}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result p1

    if-ne p1, p2, :cond_4

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v7, 0xa6

    const/4 v8, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v4

    :cond_4
    invoke-static {p0, v9}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, v9

    invoke-static {v9, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object p0

    new-instance v4, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move-object v7, v9

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v4

    :cond_5
    move v5, p0

    move v6, p1

    move-object v9, p3

    array-length p0, v9

    if-nez p0, :cond_6

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v7, 0x73

    const/4 v8, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v4

    :cond_6
    aget-byte p0, v9, v2

    invoke-static {v5, v6, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v8

    if-nez v8, :cond_7

    new-instance p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {p1, v5, v6, p0, v9}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(III[B)V

    return-object p1

    :cond_7
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v7, 0x73

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-object v4
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    iget-object v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-eqz v3, :cond_e

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_d

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_c

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_b

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_a

    const/16 v4, 0x99

    if-eq v3, v4, :cond_9

    const/16 v4, 0x9a

    if-eq v3, v4, :cond_8

    if-eqz v3, :cond_e

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0xf

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_5

    const/16 v4, 0x67

    if-eq v3, v4, :cond_4

    const/16 v4, 0x7a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x97

    if-eq v3, v4, :cond_2

    const/16 v4, 0xf8

    if-eq v3, v4, :cond_1

    const/16 v4, 0xff

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    packed-switch v3, :pswitch_data_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "Opcode: %02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v4, "Select Digital Service"

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v4, "Select Analog Service"

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "Get Menu Language"

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v4, "Report Power Status"

    goto/16 :goto_0

    :pswitch_4
    const-string v4, "Give Device Power Status"

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v4, "Menu Status"

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v4, "Menu Request"

    goto/16 :goto_0

    :pswitch_7
    const-string v4, "Give Device Vendor Id"

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v4, "Vendor Remote Button Up"

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v4, "Vendor Remote Button Down"

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v4, "Vendor Command"

    goto/16 :goto_0

    :pswitch_b
    const-string v4, "Device Vendor Id"

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v4, "Set Stream Path"

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v4, "Request Active Source"

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v4, "Report Physical Address"

    goto/16 :goto_0

    :pswitch_f
    const-string v4, "Give Physical Address"

    goto/16 :goto_0

    :pswitch_10
    const-string v4, "Active Source"

    goto/16 :goto_0

    :pswitch_11
    const-string/jumbo v4, "Routing Information"

    goto/16 :goto_0

    :pswitch_12
    const-string/jumbo v4, "Routing Change"

    goto/16 :goto_0

    :pswitch_13
    const-string/jumbo v4, "Set Audio Volume Level"

    goto/16 :goto_0

    :pswitch_14
    const-string/jumbo v4, "Set System Audio Mode"

    goto/16 :goto_0

    :pswitch_15
    const-string v4, "Give Audio Status"

    goto/16 :goto_0

    :pswitch_16
    const-string/jumbo v4, "System Audio Mode Request"

    goto/16 :goto_0

    :pswitch_17
    const-string/jumbo v4, "Set Osd Name"

    goto/16 :goto_0

    :pswitch_18
    const-string v4, "Give Osd Name"

    goto/16 :goto_0

    :pswitch_19
    const-string/jumbo v4, "User Control Release"

    goto/16 :goto_0

    :pswitch_1a
    const-string/jumbo v4, "User Control Pressed"

    goto/16 :goto_0

    :pswitch_1b
    const-string/jumbo v4, "Timer Cleared Status"

    goto/16 :goto_0

    :pswitch_1c
    const-string v4, "Deck Control"

    goto/16 :goto_0

    :pswitch_1d
    const-string/jumbo v4, "Play"

    goto/16 :goto_0

    :pswitch_1e
    const-string/jumbo v4, "Standby"

    goto/16 :goto_0

    :pswitch_1f
    const-string/jumbo v4, "Timer Status"

    goto/16 :goto_0

    :pswitch_20
    const-string/jumbo v4, "Set Analog Timer"

    goto/16 :goto_0

    :pswitch_21
    const-string v4, "Clear Analog Timer"

    goto/16 :goto_0

    :pswitch_22
    const-string/jumbo v4, "Set Menu Language"

    goto/16 :goto_0

    :pswitch_23
    const-string/jumbo v4, "Record Off"

    goto/16 :goto_0

    :pswitch_24
    const-string/jumbo v4, "Record Status"

    goto/16 :goto_0

    :pswitch_25
    const-string/jumbo v4, "Record On"

    goto/16 :goto_0

    :pswitch_26
    const-string v4, "Give Tuner Device Status"

    goto/16 :goto_0

    :pswitch_27
    const-string/jumbo v4, "Tuner Device Status"

    goto/16 :goto_0

    :pswitch_28
    const-string/jumbo v4, "Tuner Step Decrement"

    goto/16 :goto_0

    :pswitch_29
    const-string/jumbo v4, "Tuner Step Increment"

    goto/16 :goto_0

    :pswitch_2a
    const-string v4, "Image View On"

    goto/16 :goto_0

    :pswitch_2b
    const-string/jumbo v4, "Terminate ARC"

    goto/16 :goto_0

    :pswitch_2c
    const-string/jumbo v4, "Request ARC Termination"

    goto/16 :goto_0

    :pswitch_2d
    const-string/jumbo v4, "Request ARC Initiation"

    goto/16 :goto_0

    :pswitch_2e
    const-string/jumbo v4, "Report ARC Terminated"

    goto/16 :goto_0

    :pswitch_2f
    const-string/jumbo v4, "Report ARC Initiated"

    goto/16 :goto_0

    :pswitch_30
    const-string v4, "Initiate ARC"

    goto/16 :goto_0

    :pswitch_31
    const-string/jumbo v4, "Report Current Latency"

    goto/16 :goto_0

    :pswitch_32
    const-string/jumbo v4, "Request Current Latency"

    goto :goto_0

    :pswitch_33
    const-string/jumbo v4, "Report Features"

    goto :goto_0

    :pswitch_34
    const-string v4, "Give Features"

    goto :goto_0

    :pswitch_35
    const-string/jumbo v4, "Request Short Audio Descriptor"

    goto :goto_0

    :pswitch_36
    const-string/jumbo v4, "Report Short Audio Descriptor"

    goto :goto_0

    :pswitch_37
    const-string/jumbo v4, "Set External Timer"

    goto :goto_0

    :pswitch_38
    const-string v4, "Clear External Timer"

    goto :goto_0

    :pswitch_39
    const-string/jumbo v4, "Vendor Command With Id"

    goto :goto_0

    :pswitch_3a
    const-string v4, "Get Cec Version"

    goto :goto_0

    :pswitch_3b
    const-string v4, "Cec Version"

    goto :goto_0

    :pswitch_3c
    const-string v4, "InActive Source"

    goto :goto_0

    :cond_0
    const-string v4, "Abort"

    goto :goto_0

    :cond_1
    const-string v4, "Cdc Message"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Set Digital Timer"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "Report Audio Status"

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "Set Timer Program Title"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "Set Osd String"

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "Record Tv Screen"

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "Text View On"

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "Set Audio Rate"

    goto :goto_0

    :cond_9
    const-string v4, "Clear Digital Timer"

    goto :goto_0

    :cond_a
    const-string/jumbo v4, "System Audio Mode Status"

    goto :goto_0

    :cond_b
    const-string v4, "Give System Audio Mode Status"

    goto :goto_0

    :cond_c
    const-string v4, "Deck Status"

    goto :goto_0

    :cond_d
    const-string v4, "Give Deck Status"

    goto :goto_0

    :cond_e
    const-string v4, "Feature Abort"

    :goto_0
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "<%s> %X%X:%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v5, v4

    const-string v6, ">"

    if-lez v5, :cond_12

    const/16 v5, 0x45

    if-eq v3, v5, :cond_11

    const/16 v5, 0x47

    if-eq v3, v5, :cond_11

    if-eq v3, v2, :cond_11

    const/16 v2, 0xa0

    if-eq v3, v2, :cond_11

    packed-switch v3, :pswitch_data_8

    const/16 v2, 0x44

    const/4 v5, 0x0

    if-ne v2, v3, :cond_10

    aget-byte v2, v4, v5

    sget-object v3, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x10

    if-eq v2, v3, :cond_f

    const/16 v3, 0x11

    if-eq v2, v3, :cond_f

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    packed-switch v2, :pswitch_data_c

    packed-switch v2, :pswitch_data_d

    packed-switch v2, :pswitch_data_e

    packed-switch v2, :pswitch_data_f

    const-string/jumbo v2, "Unknown"

    goto :goto_1

    :pswitch_3d
    const-string v2, "Function key"

    goto :goto_1

    :pswitch_3e
    const-string/jumbo v2, "Power on"

    goto :goto_1

    :pswitch_3f
    const-string/jumbo v2, "Power off"

    goto :goto_1

    :pswitch_40
    const-string/jumbo v2, "Power toggle"

    goto :goto_1

    :pswitch_41
    const-string v2, "Functional"

    goto :goto_1

    :pswitch_42
    const-string/jumbo v2, "Timer"

    goto :goto_1

    :pswitch_43
    const-string/jumbo v2, "Media"

    goto :goto_1

    :pswitch_44
    const-string/jumbo v2, "Volume mute"

    goto :goto_1

    :pswitch_45
    const-string/jumbo v2, "Volume down"

    goto :goto_1

    :pswitch_46
    const-string/jumbo v2, "Volume up"

    goto :goto_1

    :pswitch_47
    const-string/jumbo v2, "Power"

    goto :goto_1

    :pswitch_48
    const-string v2, "Channel"

    goto :goto_1

    :pswitch_49
    const-string/jumbo v2, "Number"

    goto :goto_1

    :pswitch_4a
    const-string v2, "General"

    goto :goto_1

    :pswitch_4b
    const-string/jumbo v2, "Navigation"

    goto :goto_1

    :pswitch_4c
    const-string/jumbo v2, "Select"

    goto :goto_1

    :cond_f
    :pswitch_4d
    const-string/jumbo v2, "Menu"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " <Keycode type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    array-length v2, v4

    :goto_2
    if-ge v5, v2, :cond_12

    aget-byte v3, v4, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, ":%02X"

    invoke-static {v7, v3, v1, v5, v0}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v5

    goto :goto_2

    :cond_11
    :pswitch_4e
    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " <Redacted len=%d>"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-eqz p0, :cond_18

    if-eqz p0, :cond_17

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const-string/jumbo p0, "unknown error"

    goto :goto_4

    :cond_13
    const-string/jumbo p0, "short parameters"

    goto :goto_4

    :cond_14
    const-string/jumbo p0, "invalid parameters"

    goto :goto_4

    :cond_15
    const-string/jumbo p0, "invalid destination"

    goto :goto_4

    :cond_16
    const-string/jumbo p0, "invalid source"

    goto :goto_4

    :cond_17
    const-string/jumbo p0, "ok"

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " <Validation error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x70
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x80
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x89
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x89
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1d
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2f
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_4c
        :pswitch_4c
        :pswitch_4a
        :pswitch_4a
        :pswitch_4b
        :pswitch_4b
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x40
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x50
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_4a
        :pswitch_4c
        :pswitch_4c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x60
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x71
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method
