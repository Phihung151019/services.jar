.class public final Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCecVersion:I

.field public final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method public constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .locals 6

    const/16 v3, 0xa6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    iput p4, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    iput-object p5, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method
