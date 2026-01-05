.class public final Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/LogWritter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
