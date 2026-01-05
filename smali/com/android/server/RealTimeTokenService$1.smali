.class public final Lcom/android/server/RealTimeTokenService$1;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/RealTimeTokenService;


# direct methods
.method public constructor <init>(Lcom/android/server/RealTimeTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string/jumbo v0, "RealTimeTokenService"

    const-string/jumbo v1, "Time up: Check all tokens"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RealTimeTokenService$1;->this$0:Lcom/android/server/RealTimeTokenService;

    invoke-virtual {p0}, Lcom/android/server/RealTimeTokenService;->checkAllTokenExpiry()I

    return-void
.end method
