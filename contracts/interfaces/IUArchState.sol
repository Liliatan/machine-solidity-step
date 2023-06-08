// Copyright Cartesi and individual authors (see AUTHORS)
// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

pragma solidity >=0.8.0;

import "./IAccessLogs.sol";

interface IUArchState {
    struct State {
        IUArchState stateInterface;
        IAccessLogs.Context accessLogs;
    }

    function readCycle(
        IAccessLogs.Context memory a
    ) external returns (uint64, IAccessLogs.Context memory);

    function readHaltFlag(
        IAccessLogs.Context memory a
    ) external returns (bool, IAccessLogs.Context memory);

    function readPc(
        IAccessLogs.Context memory a
    ) external returns (uint64, IAccessLogs.Context memory);

    function readWord(
        IAccessLogs.Context memory a,
        uint64 paddr
    ) external returns (uint64, IAccessLogs.Context memory);

    function readX(
        IAccessLogs.Context memory a,
        uint8 index
    ) external returns (uint64, IAccessLogs.Context memory);

    function writeCycle(
        IAccessLogs.Context memory a,
        uint64 val
    ) external returns (IAccessLogs.Context memory);

    function writePc(
        IAccessLogs.Context memory a,
        uint64 val
    ) external returns (IAccessLogs.Context memory);

    function writeWord(
        IAccessLogs.Context memory a,
        uint64 paddr,
        uint64 val
    ) external returns (IAccessLogs.Context memory);

    function writeX(
        IAccessLogs.Context memory a,
        uint8 index,
        uint64 val
    ) external returns (IAccessLogs.Context memory);
}
