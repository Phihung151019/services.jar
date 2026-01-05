.class public final synthetic Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService$Stub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService$Stub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService$Stub;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService$Stub;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    return-void
.end method
