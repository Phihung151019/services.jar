.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;->f$1:Z

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/DisplayManagerService;->updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    return-void
.end method
