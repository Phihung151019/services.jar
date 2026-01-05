.class public final Lcom/android/server/asks/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public format:Ljava/lang/String;

.field public hashCode:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field public versionType:I


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const v1, 0x65837583

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method
