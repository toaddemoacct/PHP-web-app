CREATE OR REPLACE PACKAGE BODY DELL_DEV.trigonometry
AS
   FUNCTION sine (opposite     IN     NUMBER,
                  hypotenuse   IN     NUMBER,
                  MESSAGE         OUT VARCHAR2)
      RETURN NUMBER
   IS
      tmpsine   NUMBER;
   BEGIN
      numcalls := numcalls + 1;

      IF    (opposite <= 0)
         OR (hypotenuse <= 0)
         OR (opposite IS NULL)
         OR (hypotenuse IS NULL)
      THEN
         MESSAGE := 'Opposite and Hypotenuse must be numbers > 0';

         RETURN NULL;
      ELSE
         /*Calculate the sine*/

         tmpsine := opposite / hypotenuse;

         IF tmpsine BETWEEN -1 AND 1
         THEN
            MESSAGE := 'Success';

            RETURN tmpsine;
         ELSE
            MESSAGE := 'Unreasonable Sine: ' || tmpsine;

            RETURN NULL;
         END IF;
      END IF;
   END sine;

   FUNCTION cosine (adjacent     IN     NUMBER,
                    hypotenuse   IN     NUMBER,
                    MESSAGE         OUT VARCHAR2)
      RETURN NUMBER
   IS
      tmpcosine   NUMBER;
   BEGIN
      numcalls := numcalls + 1;

      IF    (adjacent <= 0)
         OR (hypotenuse <= 0)
         OR (adjacent IS NULL)
         OR (hypotenuse IS NULL)
      THEN
         MESSAGE := 'Adjacent and Hypotenuse must be numbers > 0';

         RETURN NULL;
      ELSE
         /*Calculate the Cosine*/

         tmpcosine := adjacent / hypotenuse;

         IF tmpcosine BETWEEN -1 AND 1
         THEN
            MESSAGE := 'Success';

            RETURN tmpcosine;
         ELSE
            MESSAGE := 'Unreasonable Cosine: ' || tmpcosine;

            RETURN NULL;
         END IF;
      END IF;
   END cosine;

   FUNCTION tangent (opposite   IN     NUMBER,
                     adjacent   IN     NUMBER,
                     MESSAGE       OUT VARCHAR2)
      RETURN NUMBER
   IS
   BEGIN
      numcalls := numcalls + 1;

      IF    (adjacent <= 0)
         OR (opposite <= 0)
         OR (adjacent IS NULL)
         OR (opposite IS NULL)
      THEN
         MESSAGE := 'Opposite and Adjacent must be numbers > 0';

         RETURN NULL;
      ELSE
         /*Return the value of the tangent*/

         MESSAGE := 'Success';

         RETURN opposite / adjacent;
      END IF;
   END tangent;
END trigonometry;
/
