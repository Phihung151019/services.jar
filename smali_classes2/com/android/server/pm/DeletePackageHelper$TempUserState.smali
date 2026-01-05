.class public final Lcom/android/server/pm/DeletePackageHelper$TempUserState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    return-void
.end method
