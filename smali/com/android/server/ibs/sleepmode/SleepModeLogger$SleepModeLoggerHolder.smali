.class public abstract Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    sput-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    return-void
.end method
