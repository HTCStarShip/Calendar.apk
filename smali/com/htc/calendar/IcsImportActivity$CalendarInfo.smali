.class Lcom/htc/calendar/IcsImportActivity$CalendarInfo;
.super Ljava/lang/Object;
.source "IcsImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/IcsImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarInfo"
.end annotation


# instance fields
.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;->id:J

    .line 42
    iput-object p3, p0, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/calendar/IcsImportActivity$CalendarInfo;->name:Ljava/lang/String;

    return-object v0
.end method
