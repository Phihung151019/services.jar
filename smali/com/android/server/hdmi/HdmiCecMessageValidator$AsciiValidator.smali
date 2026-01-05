.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mMaxLength:I

.field public final mMinLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    const/16 p1, 0xe

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public final isValid([B)I
    .locals 5

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-byte p1, p1, v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    invoke-static {p1, v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0

    :pswitch_0
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    if-ge v0, v1, :cond_2

    const/4 p0, 0x4

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    if-ge v1, v2, :cond_4

    aget-byte v2, p1, v1

    const/16 v3, 0x20

    const/16 v4, 0x7e

    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p0, 0x3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
