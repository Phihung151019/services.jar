.class public final Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFeatureAbortOpcode:I

.field public mFeatureAbortReason:I

.field public final mPhysicalAddress:I

.field public mUserControlPressedCommand:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mPhysicalAddress:I

    return-void
.end method
