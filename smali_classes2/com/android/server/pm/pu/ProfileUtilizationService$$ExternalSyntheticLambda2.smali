.class public final synthetic Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/android/server/pm/pu/App;

    sget-object v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->TAG_PU:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
