.class public abstract Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LOG_WRITER_INFO:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const/4 v2, 0x4

    const-string v3, "ActivityManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    return-void
.end method
