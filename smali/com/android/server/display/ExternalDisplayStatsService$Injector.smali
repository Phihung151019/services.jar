.class public final Lcom/android/server/display/ExternalDisplayStatsService$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mIsExtendedDisplayEnabled:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

.field public mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iput-object p3, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mIsExtendedDisplayEnabled:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    return-void
.end method
