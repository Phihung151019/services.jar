.class public abstract synthetic Lcom/android/server/enterprise/accessControl/AccessControlDefinitions$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/accessControl/AccessControl;->buildAccessControl(ILjava/lang/String;Ljava/util/List;)Lcom/android/server/enterprise/accessControl/AccessControl;

    move-result-object p0

    invoke-virtual {p4, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
