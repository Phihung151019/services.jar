.class public final Lcom/android/server/am/OomConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mOomListener:Lcom/android/server/am/ProcessList$1;


# direct methods
.method public static bridge synthetic -$$Nest$smwaitOom()[Landroid/os/OomKillRecord;
    .locals 1

    invoke-static {}, Lcom/android/server/am/OomConnection;->waitOom()[Landroid/os/OomKillRecord;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessList$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/ProcessList$1;

    new-instance p1, Lcom/android/server/am/OomConnection$OomConnectionThread;

    invoke-direct {p1, p0}, Lcom/android/server/am/OomConnection$OomConnectionThread;-><init>(Lcom/android/server/am/OomConnection;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static native waitOom()[Landroid/os/OomKillRecord;
.end method
