.class public abstract Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mReason:Ljava/lang/String;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    iput-object p3, p0, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
.end method

.method public abstract getOrigin()Ljava/lang/String;
.end method
