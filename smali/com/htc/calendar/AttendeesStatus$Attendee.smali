.class Lcom/htc/calendar/AttendeesStatus$Attendee;
.super Ljava/lang/Object;
.source "AttendeesStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attendee"
.end annotation


# instance fields
.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "email"

    .prologue
    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/htc/calendar/AttendeesStatus$Attendee;->mName:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/htc/calendar/AttendeesStatus$Attendee;->mEmail:Ljava/lang/String;

    .line 273
    return-void
.end method
