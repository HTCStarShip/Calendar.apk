.class public Lcom/htc/calendar/ByteQuotedPrintable;
.super Ljava/lang/Object;
.source "ByteQuotedPrintable.java"


# static fields
.field private static final DEBUG:Z

.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x3d

    sput-byte v0, Lcom/htc/calendar/ByteQuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 10
    .parameter "bytes"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 26
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v6

    .line 30
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_4

    .line 32
    aget-byte v0, p0, v3

    .line 33
    .local v0, b:I
    sget-byte v7, Lcom/htc/calendar/ByteQuotedPrintable;->ESCAPE_CHAR:B

    if-ne v0, v7, :cond_3

    .line 35
    const/16 v7, 0xd

    add-int/lit8 v8, v3, 0x1

    :try_start_0
    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    const/16 v7, 0xa

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    .line 37
    add-int/lit8 v3, v3, 0x2

    .line 31
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 41
    .local v5, u:I
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 42
    .local v4, l:I
    if-eq v5, v9, :cond_0

    if-eq v4, v9, :cond_0

    .line 47
    shl-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v4

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 48
    .end local v4           #l:I
    .end local v5           #u:I
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 53
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 56
    .end local v0           #b:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0
.end method
