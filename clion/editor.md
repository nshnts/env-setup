* Editor -> File and Code Templates -> Includes -> "C File Header" should be:

  ```
  #if ($HEADER_COMMENTS)
  // Created by Nishant S on ${DAY}/${MONTH_NAME_SHORT}/${YEAR}.
  #if ($ORGANIZATION_NAME && $ORGANIZATION_NAME != "")
  // Copyright (c) $YEAR ${ORGANIZATION_NAME}#if (!$ORGANIZATION_NAME.endsWith(".")).#end All rights reserved.
  #end
  //
  #end
  ```

* Editor -> Code Style -> C/C++ -> Header Guard Style should be:
  ```
  _${FILE_NAME}_${EXT}_
  ```

* Editor -> File and Code Templates -> Files -> C++ Class Header should be:
  ```
  #parse("C File Header.h")
  #[[#ifndef]]# ${INCLUDE_GUARD}
  #[[#define]]# ${INCLUDE_GUARD}

  ${NAMESPACES_OPEN}

  class ${NAME} {

  };

  ${NAMESPACES_CLOSE}

  #[[#endif]]# // ${INCLUDE_GUARD}

  ```
