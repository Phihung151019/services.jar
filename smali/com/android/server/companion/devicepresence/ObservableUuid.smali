.class public final Lcom/android/server/companion/devicepresence/ObservableUuid;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mTimeApprovedMs:J

.field public final mUserId:I

.field public final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mTimeApprovedMs:J

    return-void
.end method
