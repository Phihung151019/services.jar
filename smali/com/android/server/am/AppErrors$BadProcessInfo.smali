.class public final Lcom/android/server/am/AppErrors$BadProcessInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final longMsg:Ljava/lang/String;

.field public final shortMsg:Ljava/lang/String;

.field public final stack:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    iput-object p1, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    return-void
.end method
