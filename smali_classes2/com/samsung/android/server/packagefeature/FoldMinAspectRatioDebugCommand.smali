.class public final Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p0, "16:9"

    return-object p0
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    array-length p0, p2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    aget-object p0, p2, v0

    if-nez p0, :cond_2

    :cond_1
    const-string/jumbo p0, "longSize:shortSize"

    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return v1
.end method
