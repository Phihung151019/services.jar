.class public final Lcom/android/server/permission/access/MutateStateScope;
.super Lcom/android/server/permission/access/GetStateScope;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final newState:Lcom/android/server/permission/access/MutableAccessState;

.field public final oldState:Lcom/android/server/permission/access/AccessState;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    iput-object p1, p0, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    iput-object p2, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    return-void
.end method
