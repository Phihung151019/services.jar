.class public abstract Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sValidationInfo:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$smisValidPlayMode(I)Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x15

    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    const/16 v1, 0x25

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v1, 0x82

    const v2, 0xffdf

    const v3, 0x8000

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v1, 0x9d

    const/16 v2, 0x7fff

    invoke-static {v1, v0, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v4, 0x7

    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v4, 0x84

    const v5, 0xffff

    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v4, 0x80

    invoke-static {v4, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v1, 0x81

    invoke-static {v1, v0, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v1, 0x86

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v4, 0x70

    invoke-static {v4, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v6, 0xff

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x9f

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x91

    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x71

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x8f

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x8c

    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x46

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x83

    invoke-static {v6, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v6, 0x7d

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/4 v6, 0x4

    invoke-static {v6, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc0

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xb

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xf

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc1

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc2

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc3

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc4

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0x85

    invoke-static {v7, v1, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0x36

    invoke-static {v7, v1, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xc5

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v7, 0xd

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/4 v7, 0x6

    invoke-static {v7, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/4 v8, 0x5

    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v8, 0x45

    invoke-static {v8, v1, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v8, 0x8b

    invoke-static {v8, v1, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v10, 0x9

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x6

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0xa

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x33

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x99

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x3

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0xa1

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x34

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x97

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v10, 0x3

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0xa2

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v8, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    const/16 v10, 0x67

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v10, 0xc

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x43

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v10, 0xd

    invoke-direct {v8, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v10, 0x35

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v10, 0x9e

    invoke-static {v10, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>()V

    const/16 v11, 0x32

    invoke-static {v11, v10, v9, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/4 v11, 0x3

    invoke-direct {v10, v9, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v12, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v13, 0x42

    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/16 v13, 0x11

    const/16 v14, 0x1f

    invoke-direct {v12, v13, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v13, 0x1b

    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v12, 0x1a

    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v13, 0x41

    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v12, 0x8

    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v12, 0x9

    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v12, 0x92

    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v12, 0xa

    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v12, 0x93

    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v12, 0xe

    invoke-direct {v10, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/4 v12, 0x7

    invoke-static {v12, v10, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v12, 0x1

    invoke-direct {v10, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v13, 0x87

    invoke-static {v13, v12, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v13, 0x1

    invoke-direct {v12, v9, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v13, 0x89

    invoke-static {v13, v12, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v13, 0x1

    invoke-direct {v12, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v13, 0xa0

    invoke-static {v13, v12, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v12, 0x8a

    invoke-static {v12, v10, v5, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v13, 0x64

    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v12, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    const/16 v13, 0x47

    invoke-static {v13, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/4 v13, 0x2

    invoke-direct {v12, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v14, 0x8d

    invoke-static {v14, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v12, v4, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v9, 0x8e

    invoke-static {v9, v12, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v12, 0xf

    invoke-direct {v9, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v12, 0x44

    invoke-static {v12, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v9, v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v12, 0x90

    invoke-static {v12, v9, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v12, 0x0

    invoke-direct {v9, v13, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    invoke-static {v4, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v9, 0x7a

    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v9, v11, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v11, 0xa3

    invoke-static {v11, v9, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v9, 0xa4

    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v9, 0x20

    const/16 v11, 0x72

    invoke-static {v11, v8, v9, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(I)V

    const/16 v9, 0x7e

    invoke-static {v9, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v8, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v8, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v4, 0x9a

    invoke-static {v4, v8, v2, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v4, 0xa5

    invoke-static {v4, v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v1, 0xa7

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(II)V

    const/16 v1, 0xa8

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    const/16 v0, 0xf8

    invoke-static {v0, v10, v5, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    return-void
.end method

.method public static addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 2

    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static bcdToDecimal(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 p0, p0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    return v0
.end method

.method public static isValidAnalogueFrequency(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidChannelIdentifier(I[B)Z
    .locals 5

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xfc

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    array-length p1, p1

    sub-int/2addr p1, p0

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    array-length p1, p1

    sub-int/2addr p1, p0

    if-lt p1, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static isValidDigitalServiceIdentification(I[B)Z
    .locals 12

    aget-byte v0, p1, p0

    and-int/lit16 v1, v0, 0x80

    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x1

    add-int/2addr p0, v2

    const/16 v3, 0x1b

    const/16 v4, 0x18

    const/4 v5, 0x2

    const/16 v6, 0x12

    const/16 v7, 0x10

    const/16 v8, 0xa

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v1, :cond_7

    if-eqz v0, :cond_1

    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v8, 0x6

    if-eqz v1, :cond_2

    array-length p1, p1

    sub-int/2addr p1, p0

    if-lt p1, v8, :cond_c

    goto :goto_4

    :cond_2
    if-eq v0, v2, :cond_6

    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eq v0, v5, :cond_5

    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    return v10

    :cond_5
    :goto_2
    array-length p1, p1

    sub-int/2addr p1, p0

    if-lt p1, v8, :cond_c

    goto :goto_4

    :cond_6
    :goto_3
    array-length p1, p1

    sub-int/2addr p1, p0

    const/4 p0, 0x4

    if-lt p1, p0, :cond_c

    :goto_4
    return v2

    :cond_7
    const/16 v11, 0x80

    if-ne v1, v11, :cond_c

    if-eqz v0, :cond_b

    invoke-static {v0, v9, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    if-eq v0, v2, :cond_b

    invoke-static {v0, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq v0, v5, :cond_b

    invoke-static {v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    return v10

    :cond_b
    :goto_5
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier(I[B)Z

    move-result p0

    return p0

    :cond_c
    return v10
.end method

.method public static isValidMinute(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->bcdToDecimal(I)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method public static isValidPhysicalAddress(I[B)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    move-result p0

    const/4 p1, 0x0

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-eqz p0, :cond_1

    const v1, 0xf000

    and-int/2addr v1, p0

    shl-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v0

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isWithinRange(III)Z
    .locals 0

    and-int/lit16 p0, p0, 0xff

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validateAddress(IIII)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/2addr p0, p2

    if-nez p0, :cond_0

    return v0

    :cond_0
    shl-int p0, v0, p1

    and-int/2addr p0, p3

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
