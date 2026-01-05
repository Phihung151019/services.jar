.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    sget p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->$r8$clinit:I

    if-eqz p2, :cond_0

    const-string p1, "AppFunctionManagerServiceImpl"

    const-string v0, "Failed to register observer: "

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V

    return-void
.end method
