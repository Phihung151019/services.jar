.class public final Lcom/android/server/am/mars/ForegroundServiceRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFGSEndTime:J

.field public mFGSStartTime:J

.field public mForegroundType:I

.field public final mPackageName:Ljava/lang/String;

.field public mUsingForegroundType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/ForegroundServiceRecord;->mPackageName:Ljava/lang/String;

    return-void
.end method
