.class public interface abstract Landroid/hardware/broadcastradio/AlertCategory$$;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/StringJoiner;

    const-string/jumbo v3, "["

    const-string/jumbo v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, v0, :cond_e

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/broadcastradio/AlertCategory$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-class v1, [I

    if-ne v0, v1, :cond_f

    check-cast p0, [I

    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_e

    aget v1, p0, v3

    if-nez v1, :cond_2

    const-string v1, "GEO"

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    const-string/jumbo v1, "MET"

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "SAFETY"

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    const-string/jumbo v1, "SECURITY"

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    const-string/jumbo v1, "RESCUE"

    goto :goto_2

    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_7

    const-string v1, "FIRE"

    goto :goto_2

    :cond_7
    const/4 v4, 0x6

    if-ne v1, v4, :cond_8

    const-string v1, "HEALTH"

    goto :goto_2

    :cond_8
    const/4 v4, 0x7

    if-ne v1, v4, :cond_9

    const-string v1, "ENV"

    goto :goto_2

    :cond_9
    const/16 v4, 0x8

    if-ne v1, v4, :cond_a

    const-string/jumbo v1, "TRANSPORT"

    goto :goto_2

    :cond_a
    const/16 v4, 0x9

    if-ne v1, v4, :cond_b

    const-string v1, "INFRA"

    goto :goto_2

    :cond_b
    const/16 v4, 0xa

    if-ne v1, v4, :cond_c

    const-string v1, "CBRNE"

    goto :goto_2

    :cond_c
    const/16 v4, 0xb

    if-ne v1, v4, :cond_d

    const-string/jumbo v1, "OTHER"

    goto :goto_2

    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wrong type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not an array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
