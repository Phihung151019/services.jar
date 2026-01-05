.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;


# virtual methods
.method public final valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->toPolicyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
